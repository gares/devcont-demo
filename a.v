Require Import List.

Lemma silly T (l : list T) : l ++ nil = l.
Proof.
now induction l as [|x xs IH]; simpl; [ auto | rewrite IH ].
Qed.