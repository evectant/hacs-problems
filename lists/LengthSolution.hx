module org.crsx.hacs.problems.lists.LengthSolution {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Add(Computed, Computed);
Add(#x, #y) → ⟦ $#x + $#y ⟧;

sort Computed | scheme Length(List);
Length(⟦ ⟧) → ⟦ 0 ⟧;
Length(⟦ ⟨INT#x⟩ ⟨List#xs⟩ ⟧) → Add(⟦ 1 ⟧, Length(#xs));

}
