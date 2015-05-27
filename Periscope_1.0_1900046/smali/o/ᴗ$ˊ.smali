.class Lo/ᴗ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴗ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field ʳ:I

.field Ҭ:I

.field ӟ:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput p1, p0, Lo/ᴗ$ˊ;->ʳ:I

    .line 622
    iput p2, p0, Lo/ᴗ$ˊ;->Ҭ:I

    .line 623
    iput p3, p0, Lo/ᴗ$ˊ;->ӟ:I

    .line 624
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 647
    if-ne p0, p1, :cond_0

    .line 648
    const/4 v0, 0x1

    return v0

    .line 650
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 651
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 654
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v2, v0

    .line 656
    iget v0, p0, Lo/ᴗ$ˊ;->ʳ:I

    iget v1, v2, Lo/ᴗ$ˊ;->ʳ:I

    if-eq v0, v1, :cond_3

    .line 657
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_3
    iget v0, p0, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p0, Lo/ᴗ$ˊ;->Ҭ:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 661
    iget v0, p0, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v2, Lo/ᴗ$ˊ;->Ҭ:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v2, Lo/ᴗ$ˊ;->ӟ:I

    if-ne v0, v1, :cond_4

    .line 662
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_4
    iget v0, p0, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v2, Lo/ᴗ$ˊ;->ӟ:I

    if-eq v0, v1, :cond_5

    .line 666
    const/4 v0, 0x0

    return v0

    .line 668
    :cond_5
    iget v0, p0, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v2, Lo/ᴗ$ˊ;->Ҭ:I

    if-eq v0, v1, :cond_6

    .line 669
    const/4 v0, 0x0

    return v0

    .line 672
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 677
    iget v2, p0, Lo/ᴗ$ˊ;->ʳ:I

    .line 678
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lo/ᴗ$ˊ;->Ҭ:I

    add-int v2, v0, v1

    .line 679
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lo/ᴗ$ˊ;->ӟ:I

    add-int v2, v0, v1

    .line 680
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/ᴗ$ˊ;->ﹿ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ᴗ$ˊ;->Ҭ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ᴗ$ˊ;->ӟ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ﹿ()Ljava/lang/String;
    .locals 1

    .line 627
    iget v0, p0, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 629
    :pswitch_0
    const-string v0, "add"

    return-object v0

    .line 631
    :pswitch_1
    const-string v0, "rm"

    return-object v0

    .line 633
    :pswitch_2
    const-string v0, "up"

    return-object v0

    .line 635
    :pswitch_3
    const-string v0, "mv"

    return-object v0

    .line 637
    :goto_0
    const-string v0, "??"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
