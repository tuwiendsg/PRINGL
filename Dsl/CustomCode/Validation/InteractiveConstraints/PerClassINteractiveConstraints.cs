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
    public static partial class InnerFilterFlowBuilder
    {

        public static bool CanAcceptInnerFilterInstanceAsSource(InnerFilterInstance src) 
        {
            return (src.Position != InnerShapeFlowPosition.Final);
        }

        public static bool CanAcceptInnerFilterInstanceAsTarget(InnerFilterInstance trg)
        {
            return (trg.Position != InnerShapeFlowPosition.Initial);
        }

        public static bool CanAcceptInnerFilterInstanceAndInnerFilterInstanceAsSourceAndTarget(InnerFilterInstance src, InnerFilterInstance trg )
        {
            //todo
            return true;
        }
        
    }

    public static partial class InnerActionFlowBuilder
    {

        public static bool CanAcceptInnerActionInstanceAsSource(InnerActionInstance src)
        {
            return (src.Position != InnerShapeFlowPosition.Final);
        }

        public static bool CanAcceptInnerActionInstanceAsTarget(InnerActionInstance trg)
        {
            return (trg.Position != InnerShapeFlowPosition.Initial);
        }

        public static bool CanAcceptInnerActionInstanceAndInnerActionInstanceAsSourceAndTarget(InnerActionInstance src, InnerActionInstance trg)
        {
            //e.g., we can here implement a constraint, such as to limit the amount of outgoing/incoming transtitions. But for now we just need to have this method in order to compile
            return true;
        }

    }

    public partial class CompositeFilterBase
    {

        /// <summary>
        /// Determines whether the merge is allowed.
        /// </summary>
        /// <param name="rootElement">The element into which is being merged. Cannot use C# type comparators to check types, but dedicated VMSDK methods.</param>
        /// <param name="elementGroupPrototype">The element that the user wants to merge. Cannot use C# type comparators to check types, but dedicated VMSDK methods.</param></param>
        /// <returns>True if the merge is allowed</returns>
        protected bool CanMergeInnerActionInstance(ProtoElementBase rootElement, ElementGroupPrototype elementGroupPrototype)
        {

            return false;
        }


    }


    public partial class CompositeActionBase
    {

        /// <summary>
        /// Determines whether the merge is allowed.
        /// </summary>
        /// <param name="rootElement">The element into which is being merged. Cannot use C# type comparators to check types, but dedicated VMSDK methods.</param>
        /// <param name="elementGroupPrototype">The element that the user wants to merge. Cannot use C# type comparators to check types, but dedicated VMSDK methods.</param></param>
        /// <returns>True if the merge is allowed</returns>
        protected bool CanMergeInnerFilterInstance(ProtoElementBase rootElement, ElementGroupPrototype elementGroupPrototype)
        {
                return false;
            
        }


    }

}// end namespace