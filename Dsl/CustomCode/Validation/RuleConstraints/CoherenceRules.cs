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
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.CSharp;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Validation;

namespace at.ac.tuwien.dsg.PRINGL
{
    public partial class PRINGLDomainModel
    {
        protected override Type[] GetCustomDomainModelTypes()
        {
            return new Type[]
            {
                //TODO: When adding new valiudation Rules, add here for each added rule: typeof(ThatRulesName)
            };
        }
    }
}