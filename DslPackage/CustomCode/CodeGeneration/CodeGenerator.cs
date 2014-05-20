/**
 * Copyright 2014 Technische Universitaet Wien (TUW), Distributed Systems Group
 * E184
 *
 * This work was partially supported by the European Commission in terms of the
 * EU FP7 SmartSociety project, grant No. 600854
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

using System;
using System.IO;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using at.ac.tuwien.dsg.PRINGL.CustomCode.CodeGeneration; //for the resource


namespace at.ac.tuwien.dsg.PRINGL
{
    [System.Runtime.InteropServices.Guid("1EE2F58E-CE41-41AA-ABC3-9AC51959B434")]
    public class CodeGenerator : TemplatedCodeGenerator
    {
        protected override byte[] GenerateCode(string inputFileName, string inputFileContent)
        {
            // Replace the supplied file contents with the template we want to run 
            inputFileContent = System.Text.ASCIIEncoding.UTF8.GetString(CodeGenerationResource.PRINGLCodeGenerator);

            // Substitute the name of the current model file into the template.
            FileInfo fi = new FileInfo(inputFileName);
            inputFileContent = inputFileContent.Replace("NEKOIME", fi.Name);
            inputFileContent = inputFileContent.Replace("namespace Debugging", "namespace " + FileNamespace);
            
            //[global::Microsoft.VisualStudio.TextTemplating.VSHost.ProvideDirectiveProcessor(typeof(global::at.ac.tuwien.dsg.PRINGL.PRINGLDirectiveProcessor), global::at.ac.tuwien.dsg.PRINGL.PRINGLDirectiveProcessor.PRINGLDirectiveProcessorName, "A directive processor that provides access to PRINGL files")]

            //Microsoft.VisualStudio.TextTemplating.VSHost.

            

            //at.ac.tuwien.dsg.PRINGL.PRINGLDirectiveProcessor p = new PRINGLDirectiveProcessor();
            //this.ProcessTemplate(inputFileName,inputFileContent,p,new )
            //Microsoft.VisualStudio.TextTemplating.VSHost.ModelingTextTransformation m;

            // Now just delegate the rest of the work to the base class
            byte[] data;
            data = base.GenerateCode(inputFileName, inputFileContent);
            byte[] ascii = new byte[data.Length - 3];
            Array.Copy(data, 3, ascii, 0, data.Length - 3);
            String s = System.Text.ASCIIEncoding.Default.GetString(ascii);
            return ascii;
        }
    }
}