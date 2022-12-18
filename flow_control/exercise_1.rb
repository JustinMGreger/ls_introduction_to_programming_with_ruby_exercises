#Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

(32 * 4) >= 129 # false. 32 * 4 = 128 which is < 129.
false != !true  # fasle. false is == to not true because not true is false therefore false == false.
true == 4       # false. boolean true is not == to integer 4.
false == (847 == '847')  # true. integer 847 does not == string 847 therefore false == false.
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  #true. 
#!true == false. 
#100/5 == 20. !20 does not == 20 which is false.
#328/4 == 82 which is true.
#the last expression is simply the boolean false.
#therefore the 4 || expressions the booleans are false || false || true || false which results in the entire thing being true.