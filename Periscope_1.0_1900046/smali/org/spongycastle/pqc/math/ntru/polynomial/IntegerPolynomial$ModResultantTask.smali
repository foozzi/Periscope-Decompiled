.class Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;
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
    name = "ModResultantTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    }
.end annotation


# instance fields
.field private bjJ:I

.field final synthetic bjK:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->tb()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public tb()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 2

    .line 1334
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->bjK:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->bjJ:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵍ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
