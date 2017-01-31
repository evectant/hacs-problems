module org.crsx.hacs.problems.lists.Length {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Add(Computed, Computed);
Add(#x, #y) → ⟦ $#x + $#y ⟧;

sort Computed | scheme Length(List);
Length(#) → error ⟦ Not implemented ⟧;

}
