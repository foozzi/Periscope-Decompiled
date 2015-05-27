.class public Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/CAST5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field private aYR:I

.field private iv:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    .line 100
    const/16 v0, 0x80

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->aYR:I

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 5

    .line 104
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 106
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v4
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3

    .line 114
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->aYR:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;-><init>([BI)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 144
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    .line 146
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :goto_0
    return-void
.end method

.method protected engineInit([B)V
    .locals 4

    .line 158
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 4

    .line 168
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 171
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->ι(Ljava/lang/Object;)Lorg/spongycastle/asn1/misc/CAST5CBCParameters;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->getKeyLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->aYR:I

    .line 175
    invoke-virtual {v3}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    .line 177
    return-void

    .line 180
    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineInit([B)V

    .line 183
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in IV parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 191
    const-string v0, "CAST5 Parameters"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 132
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    .line 134
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to CAST5 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
