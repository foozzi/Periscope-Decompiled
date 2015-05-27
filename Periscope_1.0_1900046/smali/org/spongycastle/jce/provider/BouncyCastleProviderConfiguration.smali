.class Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static baM:Ljava/security/Permission;

.field private static baN:Ljava/security/Permission;

.field private static baO:Ljava/security/Permission;

.field private static baP:Ljava/security/Permission;


# instance fields
.field private baQ:Ljava/lang/ThreadLocal;

.field private baR:Ljava/lang/ThreadLocal;

.field private volatile baS:Lorg/spongycastle/jce/spec/ECParameterSpec;

.field private volatile baT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baM:Ljava/security/Permission;

    .line 18
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baN:Ljava/security/Permission;

    .line 20
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baO:Ljava/security/Permission;

    .line 22
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baP:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baQ:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baR:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public nN()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baQ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v1, v0

    .line 127
    if-eqz v1, :cond_0

    .line 129
    return-object v1

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baS:Lorg/spongycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method

.method public ךּ(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 4

    .line 137
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baR:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 138
    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->baT:Ljava/lang/Object;

    .line 143
    :cond_0
    instance-of v0, v1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_2

    .line 145
    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v2, v0

    .line 147
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 149
    return-object v2

    .line 151
    :cond_1
    goto :goto_1

    .line 152
    :cond_2
    instance-of v0, v1, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_4

    .line 154
    move-object v0, v1

    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    move-object v2, v0

    .line 156
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_4

    .line 158
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 160
    aget-object v0, v2, v3

    return-object v0

    .line 156
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
