.class public Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;
.super Ljava/security/Provider;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field public static final baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final baD:Ljava/util/Map;

.field public static bip:Ljava/lang/String;

.field private static final biq:[Ljava/lang/String;

.field private static info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-string v0, "BouncyCastle Post-Quantum Security Provider v1.50"

    sput-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->info:Ljava/lang/String;

    .line 26
    const-string v0, "BCPQC"

    sput-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->bip:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->baD:Ljava/util/Map;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Rainbow"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "McEliece"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->biq:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 49
    sget-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->bip:Ljava/lang/String;

    sget-object v1, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->info:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 51
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider$1;-><init>(Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private setup()V
    .locals 2

    .line 63
    const-string v0, "org.spongycastle.pqc.jcajce.provider."

    sget-object v1, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->biq:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private ˊ(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 68
    const/4 v3, 0x0

    :goto_0
    array-length v0, p2

    if-eq v3, v0, :cond_2

    .line 70
    const/4 v4, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 75
    if-eqz v5, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 87
    :goto_1
    goto :goto_2

    .line 84
    :catch_0
    move-exception v5

    .line 89
    :goto_2
    if-eqz v4, :cond_1

    .line 93
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_3

    .line 95
    :catch_1
    move-exception v5

    .line 97
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Mappings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 102
    :cond_2
    return-void
.end method

.method static synthetic ˊ(Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->setup()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1

    .line 129
    sget-object v0, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->baD:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public ﹶ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 119
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public ﹺ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
