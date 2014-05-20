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

using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;
using System.Collections.Generic;

namespace at.ac.tuwien.dsg.PRINGL
{
    
    
    partial class FixUpDiagram
    {
        private ModelElement GetParentForInnerFilterInstance (InnerFilterInstance e)
        {
            return e.Container;
        }

        private ModelElement GetParentForInnerActionInstance(InnerActionInstance e)
        {
            return e.Container;
        }
    }

    //allowing to resize surrounding containers
    partial class CompositeFilterShape
    {
        /// <summary>
        /// Cannot move the children outside their children shape.
        /// Parent will always expand to enclose children.
        /// </summary>
        public override bool AllowsChildrenToResizeParent
        {
            get { return true; }
        }
        /// <summary>
        /// Cannot shrink the parent shape if it would leave
        /// the child shapes outside the parent's boundary.
        /// </summary>
        public override SizeD MinimumResizableSize
        {
            get { return this.CalculateMinimumSizeBasedOnChildren(); }
        }

        /// <summary>
        /// Keeps the size of the expanded bounds of the shape
        /// </summary>
        protected RectangleD ExpandedBounds;
        /// <summary>
        /// Store the current bounds and set the size.
        /// </summary>
        protected override void Collapse()
        {
            base.Collapse();
            this.ExpandedBounds = this.Bounds;
            this.Bounds = this.AbsoluteBounds;
            this.AbsoluteBounds = new RectangleD
                   (this.Location, new SizeD(1.5, 0.3));
        }
        /// <summary> 
        /// When we expand the shape, we restore the expanded bounds
        /// </summary>
        protected override void Expand()
        {
            base.Expand();
            this.Bounds = this.ExpandedBounds;
        }

        private static System.Collections.ArrayList customOutlineDashPattern;

        public static System.Collections.ArrayList CustomOutlineDashPattern
        {

            get
            {
                if (customOutlineDashPattern == null)
                    customOutlineDashPattern = new System.Collections.ArrayList(new float[] { 4.0F, 2.0F, 1.0F, 3.0F });
                return customOutlineDashPattern;
            }
        }

    }//end CompositeFilterShape

    partial class CompositeActionShape
    {
        /// <summary>
        /// Cannot move the children outside their children shape.
        /// Parent will always expand to enclose children.
        /// </summary>
        public override bool AllowsChildrenToResizeParent
        {
            get { return true; }
        }
        /// <summary>
        /// Cannot shrink the parent shape if it would leave
        /// the child shapes outside the parent's boundary.
        /// </summary>
        public override SizeD MinimumResizableSize
        {
            get { return this.CalculateMinimumSizeBasedOnChildren(); }
        }

        /// <summary>
        /// Keeps the size of the expanded bounds of the shape
        /// </summary>
        protected RectangleD ExpandedBounds;
        /// <summary>
        /// Store the current bounds and set the size.
        /// </summary>
        protected override void Collapse()
        {
            base.Collapse();
            this.ExpandedBounds = this.Bounds;
            this.Bounds = this.AbsoluteBounds;
            this.AbsoluteBounds = new RectangleD
                   (this.Location, new SizeD(1.5, 0.3));
        }
        /// <summary> 
        /// When we expand the shape, we restore the expanded bounds
        /// </summary>
        protected override void Expand()
        {
            base.Expand();
            this.Bounds = this.ExpandedBounds;
        }


        private static System.Collections.ArrayList customOutlineDashPattern;

        public static System.Collections.ArrayList CustomOutlineDashPattern
        {

            get
            {
                if (customOutlineDashPattern == null)
                    customOutlineDashPattern = new System.Collections.ArrayList(new float[] { 4.0F, 2.0F, 1.0F, 3.0F });
                return customOutlineDashPattern;
            }
        }


    }//end composite action shape

    partial class FilterShapeBase
    {
        public static string GetDisplayPropertyFromFilterForParams(ModelElement element)
        {
            var e = (PRINGLParameter)element;
            string value = e.InitialValue.Equals("") ? "" : (" = " + e.InitialValue);
            return e.Propagation + e.Name + ":" + e.Type + value ;
        }
    } //end partial class FilterShape       

    partial class RewActionShapeBase
    {
        public static string GetDisplayPropertyFromRewActionForParams(ModelElement element)
        {
            var e = (PRINGLParameter)element;
            string value = e.InitialValue.Equals("") ? "" : (" = " + e.InitialValue);
            return e.Propagation + e.Name + ":" + e.Type + value;
        }
    }      

    partial class IncMechShapeBase
    {
        public static string GetDisplayPropertyFromIncMechForParams(ModelElement element)
        {
            var e = (PRINGLParameter)element;
            string value = e.InitialValue.Equals("") ? "" : (" = " + e.InitialValue);
            return e.Propagation + e.Name + ":" + e.Type + value;
        }
    }

    partial class IncLogicShapeBase
    {
        public static string GetDisplayPropertyFromIncLogicForParams(ModelElement element)
        {
            var e = (PRINGLParameter)element;
            string value = e.InitialValue.Equals("") ? "" : (" = " + e.InitialValue);
            return e.Propagation + e.Name + ":" + e.Type + value;
        }
    }

    partial class IncMechInstanceShapeBase
    {
        public static string GetDisplayPropertyFromIncMechInstanceForParams(ModelElement element)
        {
            var e = (PRINGLParameter)element;
            string value = e.InitialValue.Equals("") ? "" : (" = " + e.InitialValue);
            return e.Propagation + e.Name + ":" + e.Type + value;
        }
    } 

    partial class IncMechInstanceBase
    {
        public string GetfullNameValue()
        {
            return this.Name + ":" + this.Type;
        }
    }

    partial class InnerActionInstanceBase
    {
        public string GetfullNameValue()
        {
            return this.Name + ":" + this.Type;
        }
    }

    partial class InnerFilterInstanceBase
    {
        public string GetfullNameValue()
        {
            return this.Name + ":" + this.Type;
        }
    }

}//end namespace