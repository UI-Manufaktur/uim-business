module uim.business.mixins;

import uim.business;

/// mixin for string properties
template OString(string name) {
    const char[] OString = `
    protected string _`~name~`; 
    @property string `~name~`() { return _`~name~`; }; 
    @property void `~name~`(string new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for uuid properties
template OUuid(string name) {
    const char[] OUuid = `
    protected UUID _`~name~`; 
    @property UUID `~name~`() { return _`~name~`; }; 
    @property void `~name~`(UUID new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for uuid properties
template OTimestamp(string name) {
    const char[] OTimestamp = `
    protected size_t _`~name~`; 
    @property size_t `~name~`() { return _`~name~`; }; 
    @property void `~name~`(size_t new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 