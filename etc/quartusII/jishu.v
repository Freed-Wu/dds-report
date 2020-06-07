module jishu(clk,bt0,bt1,bt2,bt3,bt4,bt5,bt6,bt7,b0,b1,b2,b3,b4,b5,b6,b7,sclk);
input clk;
input sclk;
output [3:0]bt0,bt1,bt2,bt3,bt4,bt5,bt6,bt7;
output [3:0]b0,b1,b2,b3,b4,b5,b6,b7;
reg [3:0]bt0,bt1,bt2,bt3,bt4,bt5,bt6,bt7;
reg [3:0]b0,b1,b2,b3,b4,b5,b6,b7;
always @(posedge sclk)
begin
if(clk)
begin
      if(b0==9)
         begin b0=0;b1=b1+1;
            if(b1==9)
              begin b1=0;b2=b2+1;
                  if(b2==9)
                   begin b2=0;b3=b3+1;
                     if(b3==9)
                        begin b3=0;b4=b4+1;
                           if(b4==9)
                              begin b4=0;b5=b5+1;
                                 if(b5==9)
                                    begin b5=0;b6=b6+1;
                                        if(b6==9)
                                            begin b6=0;b7=b7+1;
                                               if(b7==9)
                                                   begin b7=0;end
                                             end
                                      end
                                end
                           end
                     end
                 end
            end
       else begin b0=b0+1;end
   end
else
   begin 
     if(b0!=0|b1!=0|b2!=0|b3!=0|b4!=0|b5!=0|b6!=0|b7!=0)
        begin
           bt0<=b0;
           bt1<=b1;
           bt2<=b2;
           bt3<=b3;
           bt4<=b4;
           bt5<=b5;
           bt6<=b6;
           bt7<=b7;
           
           b0<=0;
           b1<=0;
           b2<=0;
           b3<=0;
           b4<=0;
           b5<=0;
           b6<=0;
           b7<=0;
        end
      end
end
endmodule


