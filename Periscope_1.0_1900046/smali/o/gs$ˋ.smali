.class final Lo/gs$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02cb"
.end annotation


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 2

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 538
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 540
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 541
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lo/gr;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/4 v0, 0x0

    aget-object v0, p2, v0

    # invokes: Lo/gs;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lo/gs;->access$000(Ljava/lang/reflect/Type;)V

    .line 543
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 544
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lo/gs;->ᐝ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    .line 545
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_3

    .line 548
    :cond_3
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lo/gr;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const/4 v0, 0x0

    aget-object v0, p1, v0

    # invokes: Lo/gs;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lo/gs;->access$000(Ljava/lang/reflect/Type;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    .line 551
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lo/gs;->ᐝ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    .line 553
    :goto_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 564
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, v0}, Lo/gs;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 560
    iget-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v1, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lo/gs;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    :goto_0
    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 556
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v1, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 570
    iget-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 575
    iget-object v0, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/gs$ˋ;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/gs;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    iget-object v0, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 578
    const-string v0, "?"

    return-object v0

    .line 580
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/gs$ˋ;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/gs;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
