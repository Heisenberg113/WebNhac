//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Test1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Songs
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Songs()
        {
            this.Playlists = new HashSet<Playlists>();
        }
    
        public int ID_Song { get; set; }
        public string NAME { get; set; }
        public Nullable<int> ID_Singer { get; set; }
        public string Path_Song { get; set; }
        public string Path_BackGround { get; set; }
        public string Types { get; set; }
    
        public virtual Singers Singers { get; set; }
        public virtual Types Types1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Playlists> Playlists { get; set; }
    }
}
