.class public Lorg/spongycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDx:[B

.field private aML:I

.field private aaN:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    .line 16
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aDx:[B

    .line 24
    iput p2, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aaN:I

    .line 25
    iput p3, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aML:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object v2, v0

    .line 58
    iget v0, v2, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aaN:I

    iget v1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aaN:I

    if-eq v0, v1, :cond_1

    .line 60
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aDx:[B

    iget-object v1, v2, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aDx:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aaN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->aDx:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
