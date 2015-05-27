.class final Lo/jk;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Lo/fw;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 642
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 642
    move-object v0, p2

    check-cast v0, Lo/fw;

    invoke-virtual {p0, p1, v0}, Lo/jk;->ˊ(Lo/kc;Lo/fw;)V

    return-void
.end method

.method public ˊ(Lo/kc;Lo/fw;)V
    .locals 5

    .line 681
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo/fw;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    goto/16 :goto_3

    .line 683
    :cond_1
    invoke-virtual {p2}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p2}, Lo/fw;->t()Lo/gc;

    move-result-object v3

    .line 685
    invoke-virtual {v3}, Lo/gc;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {v3}, Lo/gc;->g()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {v3}, Lo/gc;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {v3}, Lo/gc;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lo/kc;->ˁ(Z)Lo/kc;

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {v3}, Lo/gc;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 693
    :goto_0
    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Lo/fw;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    invoke-virtual {p1}, Lo/kc;->P()Lo/kc;

    .line 695
    invoke-virtual {p2}, Lo/fw;->s()Lo/ft;

    move-result-object v0

    invoke-virtual {v0}, Lo/ft;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    move-object v4, v0

    .line 696
    invoke-virtual {p0, p1, v4}, Lo/jk;->ˊ(Lo/kc;Lo/fw;)V

    goto :goto_1

    .line 698
    :cond_5
    invoke-virtual {p1}, Lo/kc;->Q()Lo/kc;

    goto :goto_3

    .line 700
    :cond_6
    invoke-virtual {p2}, Lo/fw;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 702
    invoke-virtual {p2}, Lo/fw;->r()Lo/fz;

    move-result-object v0

    invoke-virtual {v0}, Lo/fz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 703
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 704
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {p0, p1, v0}, Lo/jk;->ˊ(Lo/kc;Lo/fw;)V

    goto :goto_2

    .line 706
    :cond_7
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    goto :goto_3

    .line 709
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :goto_3
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 642
    invoke-virtual {p0, p1}, Lo/jk;->ᴵ(Lo/jz;)Lo/fw;

    move-result-object v0

    return-object v0
.end method

.method public ᴵ(Lo/jz;)Lo/fw;
    .locals 5

    .line 644
    sget-object v0, Lo/ir$1;->LP:[I

    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v1

    invoke-virtual {v1}, Lo/kb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 646
    :pswitch_0
    new-instance v0, Lo/gc;

    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 648
    :pswitch_1
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 649
    new-instance v0, Lo/gc;

    new-instance v1, Lo/hj;

    invoke-direct {v1, v2}, Lo/hj;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 651
    :pswitch_2
    new-instance v0, Lo/gc;

    invoke-virtual {p1}, Lo/jz;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 653
    :pswitch_3
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 654
    sget-object v0, Lo/fy;->Ku:Lo/fy;

    return-object v0

    .line 656
    :pswitch_4
    new-instance v3, Lo/ft;

    invoke-direct {v3}, Lo/ft;-><init>()V

    .line 657
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 658
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Lo/jk;->ᴵ(Lo/jz;)Lo/fw;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/ft;->ˎ(Lo/fw;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {p1}, Lo/jz;->endArray()V

    .line 662
    return-object v3

    .line 664
    :pswitch_5
    new-instance v4, Lo/fz;

    invoke-direct {v4}, Lo/fz;-><init>()V

    .line 665
    invoke-virtual {p1}, Lo/jz;->beginObject()V

    .line 666
    :goto_1
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p1}, Lo/jz;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo/jk;->ᴵ(Lo/jz;)Lo/fw;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lo/fz;->ˊ(Ljava/lang/String;Lo/fw;)V

    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {p1}, Lo/jz;->endObject()V

    .line 670
    return-object v4

    .line 676
    :goto_2
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
