module org.crsx.hacs.problems.lists.ReverseSolution {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort List | scheme Reverse(List);
Reverse(#xs) → ReverseAux(#xs, ⟦ ⟧);

sort List | scheme ReverseAux(List, List);
ReverseAux(⟦ ⟧, #ys) → #ys;
ReverseAux(⟦ ⟨INT#x⟩ ⟨List#xs⟩ ⟧, #ys)
    → ReverseAux(#xs, ⟦ ⟨INT#x⟩ ⟨List#ys⟩ ⟧);

}
