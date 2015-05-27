.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static aWY:Ljava/util/Hashtable;


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field aMG:I

.field aWI:Ljava/lang/String;

.field aWM:Ljava/lang/Object;

.field aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

.field aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

.field aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    .line 57
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 45
    const/16 v0, 0xef

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFb:I

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aMG:I

    .line 47
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFa:Ljava/security/SecureRandom;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aJn:Z

    .line 69
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    .line 70
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 45
    const/16 v0, 0xef

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFb:I

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aMG:I

    .line 47
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFa:Ljava/security/SecureRandom;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aJn:Z

    .line 78
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 80
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 12

    .line 150
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aJn:Z

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFb:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(ILjava/security/SecureRandom;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v7

    .line 156
    invoke-virtual {v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v8, v0

    .line 157
    invoke-virtual {v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v9, v0

    .line 159
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v10, v0

    .line 163
    new-instance v11, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v11, v0, v8, v10, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 164
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v3, v9

    move-object v4, v11

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v0, v11, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v1, v2, v8, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v2, v3, v9, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 174
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v10, v0

    .line 176
    new-instance v11, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v11, v0, v8, v10, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 178
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWI:Ljava/lang/String;

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v3, v9

    move-object v4, v11

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v0, v11, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4

    .line 86
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFb:I

    .line 87
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aFa:Ljava/security/SecureRandom;

    .line 89
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWY:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    move-object v2, v0

    .line 90
    if-nez v2, :cond_0

    .line 92
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown key size."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 101
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size not configurable."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :goto_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 110
    if-nez p1, :cond_1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    .line 113
    if-nez v2, :cond_0

    .line 115
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, v2, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Lorg/spongycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_2

    .line 123
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 124
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Lorg/spongycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_0

    .line 126
    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    .line 128
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_0

    .line 131
    :cond_3
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_4

    .line 133
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 135
    :cond_4
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_5

    .line 137
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 141
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a ECParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aJn:Z

    .line 146
    return-void
.end method

.method protected ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;
    .locals 7

    .line 189
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    .line 192
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 193
    new-instance v6, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 194
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v0, v6, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;
    .locals 5

    .line 184
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method protected ˊ(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 2

    .line 229
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ᙆ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    move-result-object v1

    .line 230
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWM:Ljava/lang/Object;

    .line 231
    invoke-virtual {p0, v1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 232
    return-void
.end method

.method protected ᙆ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveSpec;
    .locals 9

    .line 202
    invoke-static {p1}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 203
    if-nez v7, :cond_1

    .line 208
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 209
    if-nez v7, :cond_0

    .line 211
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v8

    .line 216
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 223
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, p1

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
