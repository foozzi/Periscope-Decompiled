.class public Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source ""


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 32
    return-void
.end method

.method private jX()[B
    .locals 6

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFe:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFe:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aqg:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aqg:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 45
    const/4 v5, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFf:I

    if-ge v5, v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v4
.end method


# virtual methods
.method public ر(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4

    .line 65
    div-int/lit8 p1, p1, 0x8

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t generate a derived key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->jX()[B

    move-result-object v3

    .line 75
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 117
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->ر(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4

    .line 92
    div-int/lit8 p1, p1, 0x8

    .line 93
    div-int/lit8 p2, p2, 0x8

    .line 95
    add-int v0, p1, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t generate a derived key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->jX()[B

    move-result-object v3

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, v3, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
