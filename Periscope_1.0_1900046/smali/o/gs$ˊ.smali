.class final Lo/gs$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02ca"
.end annotation


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 443
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 444
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 446
    :goto_0
    if-nez p1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 449
    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lo/gs;->ᐝ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lo/gs$ˊ;->ownerType:Ljava/lang/reflect/Type;

    .line 450
    invoke-static {p2}, Lo/gs;->ᐝ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lo/gs$ˊ;->rawType:Ljava/lang/reflect/Type;

    .line 451
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    .line 452
    const/4 v2, 0x0

    :goto_3
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v2, v0, :cond_6

    .line 453
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    invoke-static {v0}, Lo/gr;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    # invokes: Lo/gs;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lo/gs;->access$000(Ljava/lang/reflect/Type;)V

    .line 455
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v1, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-static {v1}, Lo/gs;->ᐝ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, v0, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 457
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 472
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

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

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 460
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 468
    iget-object v0, p0, Lo/gs$ˊ;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 464
    iget-object v0, p0, Lo/gs$ˊ;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 477
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/gs$ˊ;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/gs$ˊ;->ownerType:Ljava/lang/reflect/Type;

    # invokes: Lo/gs;->hashCodeOrZero(Ljava/lang/Object;)I
    invoke-static {v1}, Lo/gs;->access$100(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    iget-object v0, p0, Lo/gs$ˊ;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lo/gs;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    const-string v0, "<"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lo/gs;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 492
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/gs$ˊ;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v4

    invoke-static {v1}, Lo/gs;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 494
    :cond_1
    const-string v0, ">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
