.class public Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

.field public bjR:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    .line 27
    return-void
.end method
