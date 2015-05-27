.class Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CombineTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    }
.end annotation


# instance fields
.field private bjH:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

.field private bjI:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1341
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->tb()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public tb()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 2

    .line 1355
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->bjH:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->bjI:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
