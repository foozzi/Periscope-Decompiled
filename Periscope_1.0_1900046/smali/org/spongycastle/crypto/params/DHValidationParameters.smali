.class public Lorg/spongycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDx:[B

.field private aaN:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aDx:[B

    .line 15
    iput p2, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aaN:I

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 31
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DHValidationParameters;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHValidationParameters;

    move-object v2, v0

    .line 38
    iget v0, v2, Lorg/spongycastle/crypto/params/DHValidationParameters;->aaN:I

    iget v1, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aaN:I

    if-eq v0, v1, :cond_1

    .line 40
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aDx:[B

    iget-object v1, v2, Lorg/spongycastle/crypto/params/DHValidationParameters;->aDx:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget v0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aaN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->aDx:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
