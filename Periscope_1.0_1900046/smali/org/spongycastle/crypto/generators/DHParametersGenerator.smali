.class public Lorg/spongycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final aKc:Ljava/math/BigInteger;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aMG:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jO()Lorg/spongycastle/crypto/params/DHParameters;
    .locals 10

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->size:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aMG:I

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ˋ(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v6

    .line 46
    const/4 v0, 0x0

    aget-object v7, v6, v0

    .line 47
    const/4 v0, 0x1

    aget-object v8, v6, v0

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v7, v8, v0}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v9

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/params/DHParameters;

    sget-object v4, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aKc:Ljava/math/BigInteger;

    move-object v1, v7

    move-object v2, v9

    move-object v3, v8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    return-object v0
.end method

.method public ˊ(IILjava/security/SecureRandom;)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->size:I

    .line 29
    iput p2, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aMG:I

    .line 30
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->aFa:Ljava/security/SecureRandom;

    .line 31
    return-void
.end method
