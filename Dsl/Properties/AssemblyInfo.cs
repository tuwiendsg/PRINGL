#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"TU Wien")]
[assembly: AssemblyProduct(@"PRINGL")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"at.ac.tuwien.dsg.PRINGL.DslPackage, PublicKey=00240000048000009400000006020000002400005253413100040000010001001BF88A97FC542057DE2E18429507CC354430BBEC52A6A747FA5FCC3DAC03FFCE0C9B1512A0F238F6E1F594F0AB7E17E49CB29CB314C756AF4AA08E8ACA8C94A38BF522879E5D341989C3D62B63E92A756DC6768B0E2F867F1ABFA3D87AE103E809FB810B165A045D0AE8690D6C7D6DA4AF659A6C40177D9CAEC46D4B9E2DE3AA")]