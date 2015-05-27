.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private aZt:Lorg/spongycastle/crypto/Mac;

.field private aZu:I

.field private aZv:I

.field private ahI:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZu:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZv:I

    .line 29
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->ahI:I

    .line 34
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Mac;III)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZu:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZv:I

    .line 29
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->ahI:I

    .line 43
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    .line 44
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZu:I

    .line 45
    iput p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZv:I

    .line 46
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->ahI:I

    .line 47
    return-void
.end method

.method private static ˋ(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    .line 133
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v2, v0, [B

    .line 126
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 128
    return-object v2
.end method

.method protected engineGetMacLength()I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .line 56
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_3

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v3, v0

    .line 65
    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2

    .line 71
    invoke-static {v3, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :goto_0
    goto :goto_1

    .line 78
    :cond_3
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_4

    .line 80
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    goto :goto_1

    .line 82
    :cond_4
    instance-of v0, p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    if-eqz v0, :cond_5

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->ˋ(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->ǃ([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->lp()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object v2

    goto :goto_1

    .line 86
    :cond_5
    if-nez p2, :cond_6

    .line 88
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_1

    .line 92
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 96
    return-void
.end method

.method protected engineReset()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 106
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 112
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->aZt:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 120
    return-void
.end method
