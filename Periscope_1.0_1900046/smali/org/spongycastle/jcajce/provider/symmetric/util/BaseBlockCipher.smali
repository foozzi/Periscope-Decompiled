.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;,
        Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;,
        Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
    }
.end annotation


# static fields
.field private static final aYP:Ljava/lang/Class;


# instance fields
.field private aWR:I

.field private aXo:[Ljava/lang/Class;

.field private aZe:Lorg/spongycastle/crypto/BlockCipher;

.field private aZf:Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aZi:Lorg/spongycastle/crypto/params/AEADParameters;

.field private aZj:Z

.field private aZk:Ljavax/crypto/spec/PBEParameterSpec;

.field private aZl:Ljava/lang/String;

.field private aZm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ⅼ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    .line 119
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 3

    .line 142
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    .line 145
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 146
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BufferedBlockCipher;I)V
    .locals 3

    .line 152
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    .line 155
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 156
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    .line 135
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 136
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 125
    invoke-interface {p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->nR()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    .line 126
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZf:Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 128
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->nR()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 129
    return-void
.end method

.method private static ⅼ(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 104
    :try_start_0
    const-class v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    return-object v1

    .line 108
    :catch_0
    move-exception v1

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method private ﭘ(Ljava/lang/String;)Z
    .locals 1

    .line 870
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OCB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static synthetic ﺒ(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 66
    invoke-static {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ⅼ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 7

    .line 848
    const/4 v6, 0x0

    .line 850
    if-eqz p3, :cond_0

    .line 852
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˋ([BII[BI)I

    move-result v6

    .line 855
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    add-int v1, p5, v6

    invoke-interface {v0, p4, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/OutputLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v0, v6

    return v0

    .line 857
    :catch_0
    move-exception v6

    .line 859
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/OutputLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :catch_1
    move-exception v6

    .line 863
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9

    .line 809
    const/4 v6, 0x0

    .line 810
    invoke-virtual {p0, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v7, v0, [B

    .line 812
    if-eqz p3, :cond_0

    .line 814
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v7

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˋ([BII[BI)I

    move-result v6

    .line 819
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v7, v6}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v6, v0

    .line 824
    goto :goto_0

    .line 821
    :catch_0
    move-exception v8

    .line 823
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :goto_0
    array-length v0, v7

    if-ne v6, v0, :cond_1

    .line 828
    return-object v7

    .line 831
    :cond_1
    new-array v8, v6, [B

    .line 833
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v7, v0, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    return-object v8
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    .line 177
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    .line 188
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 195
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto/16 :goto_1

    .line 197
    :catch_0
    move-exception v4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v4

    .line 206
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 208
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_1
    const-string v0, "SC"

    :try_start_1
    invoke-static {v4, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 214
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_0

    .line 216
    :catch_1
    move-exception v5

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :goto_0
    goto :goto_1

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_3

    .line 225
    const-string v0, "GCM"

    const-string v1, "SC"

    :try_start_2
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 226
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    new-instance v1, Lorg/spongycastle/asn1/cms/GCMParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->iO()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/cms/GCMParameters;-><init>([BI)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    goto :goto_1

    .line 228
    :catch_2
    move-exception v4

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 690
    const/4 v3, 0x0

    .line 692
    if-eqz p3, :cond_2

    .line 694
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    array-length v0, v0

    if-eq v4, v0, :cond_1

    .line 696
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    if-nez v0, :cond_0

    .line 698
    goto :goto_1

    .line 703
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 704
    goto :goto_2

    .line 706
    :catch_0
    move-exception v5

    .line 694
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 712
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 714
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t handle parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_2
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 720
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 721
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 731
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    goto :goto_0

    .line 733
    :catch_0
    move-exception v2

    .line 735
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :goto_0
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    .line 443
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key for algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_9

    .line 461
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v4, v0

    .line 463
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZl:Ljava/lang/String;

    .line 472
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 474
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 475
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_3

    .line 477
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v5, v0

    .line 479
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 480
    goto :goto_1

    .line 481
    :cond_3
    instance-of v0, p3, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    if-eqz v0, :cond_7

    .line 484
    move-object v0, p3

    check-cast v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    move-object v5, v0

    .line 486
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v5}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->nD()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 488
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_4

    .line 490
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 492
    :cond_4
    goto :goto_1

    .line 494
    :cond_5
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_6

    .line 496
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 497
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p3, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    goto :goto_1

    .line 501
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_7
    :goto_1
    instance-of v0, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_8

    .line 506
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 508
    :cond_8
    goto/16 :goto_4

    .line 509
    :cond_9
    if-nez p3, :cond_a

    .line 511
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_4

    .line 513
    :cond_a
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_f

    .line 515
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_d

    .line 517
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v4, v0

    .line 519
    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ﭘ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 521
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IV must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_b
    instance-of v0, p2, Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;

    if-eqz v0, :cond_c

    .line 526
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v1, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 527
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    .line 531
    :cond_c
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 532
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 534
    :goto_2
    goto/16 :goto_4

    .line 537
    :cond_d
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 539
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ECB mode does not use an IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_e
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_4

    .line 545
    :cond_f
    instance-of v0, p3, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    if-eqz v0, :cond_11

    .line 547
    move-object v0, p3

    check-cast v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    move-object v4, v0

    .line 549
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v1, p3

    check-cast v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->nD()[B

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 552
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_10

    .line 554
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 555
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 557
    :cond_10
    goto/16 :goto_4

    .line 558
    :cond_11
    instance-of v0, p3, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_13

    .line 560
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move-object v4, v0

    .line 562
    new-instance v3, Lorg/spongycastle/crypto/params/RC2Parameters;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 564
    invoke-virtual {v4}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_12

    .line 566
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 567
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 569
    :cond_12
    goto/16 :goto_4

    .line 570
    :cond_13
    instance-of v0, p3, Ljavax/crypto/spec/RC5ParameterSpec;

    if-eqz v0, :cond_18

    .line 572
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move-object v4, v0

    .line 574
    new-instance v3, Lorg/spongycastle/crypto/params/RC5Parameters;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 575
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 577
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 579
    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_16

    .line 581
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RC5 already set up for a word size of 32 not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_14
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 586
    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_16

    .line 588
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RC5 already set up for a word size of 64 not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_15
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RC5 parameters passed to a cipher that is not RC5."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_16
    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_17

    .line 598
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 599
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 601
    :cond_17
    goto/16 :goto_4

    .line 602
    :cond_18
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 604
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ﭘ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-nez v0, :cond_19

    .line 606
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_19
    :try_start_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const-string v1, "getTLen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 612
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aYP:Ljava/lang/Class;

    const-string v1, "getIV"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 614
    instance-of v0, p2, Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;

    if-eqz v0, :cond_1a

    .line 616
    new-instance v3, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    const/4 v2, 0x0

    invoke-direct {v3, v2, v0, v1}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;

    goto :goto_3

    .line 620
    :cond_1a
    new-instance v3, Lorg/spongycastle/crypto/params/AEADParameters;

    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZi:Lorg/spongycastle/crypto/params/AEADParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_3
    goto :goto_4

    .line 623
    :catch_0
    move-exception v4

    .line 625
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Cannot process GCMParameterSpec."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :goto_4
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    if-eqz v0, :cond_1f

    instance-of v0, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_1f

    instance-of v0, v3, Lorg/spongycastle/crypto/params/AEADParameters;

    if-nez v0, :cond_1f

    .line 635
    move-object v4, p4

    .line 637
    if-nez v4, :cond_1c

    .line 639
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 642
    :cond_1c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1e

    .line 644
    :cond_1d
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    new-array v5, v0, [B

    .line 646
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 647
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v0, v3, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 648
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 649
    goto :goto_5

    .line 650
    :cond_1e
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1f

    .line 652
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "no IV set when one expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1f
    :goto_5
    if-eqz p4, :cond_20

    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZj:Z

    if-eqz v0, :cond_20

    .line 658
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v3, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v3, v0

    .line 663
    :cond_20
    packed-switch p1, :pswitch_data_0

    goto :goto_6

    .line 667
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 668
    goto :goto_7

    .line 671
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 672
    goto :goto_7

    .line 674
    :goto_6
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 680
    :goto_7
    goto :goto_8

    .line 677
    :catch_1
    move-exception v4

    .line 679
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 6

    .line 242
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 247
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "CBC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 252
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "OFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 258
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 262
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 264
    goto/16 :goto_0

    .line 267
    :cond_2
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "CFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 274
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 276
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 278
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 280
    goto/16 :goto_0

    .line 283
    :cond_4
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "PGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 291
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 292
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Z)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 294
    goto/16 :goto_0

    .line 295
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "OpenPGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 298
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 301
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "SIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 304
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_8
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 311
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "CTR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 313
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 314
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 317
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "GOFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 319
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 320
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 323
    :cond_b
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "GCFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 325
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 326
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 329
    :cond_c
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 331
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 332
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CTSBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 334
    :cond_d
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 336
    const/16 v0, 0xd

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 337
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 339
    :cond_e
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "OCB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 341
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZf:Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    if-eqz v0, :cond_f

    .line 346
    const/16 v0, 0xf

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 347
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZf:Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    invoke-interface {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->nR()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 351
    :cond_f
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_10
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "EAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 357
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/EAXBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 359
    :cond_11
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 361
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aWR:I

    .line 362
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZe:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 366
    :cond_12
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :goto_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4

    .line 374
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    const-string v0, "NOPADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->nX()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 383
    :cond_0
    const-string v0, "WITHCTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CTSBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZj:Z

    .line 391
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ﭘ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    const-string v0, "PKCS5PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PKCS7PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    :cond_3
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 399
    :cond_4
    const-string v0, "ZEROBYTEPADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v2}, Lorg/spongycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 403
    :cond_5
    const-string v0, "ISO10126PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ISO10126-2PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    :cond_6
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v2}, Lorg/spongycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 407
    :cond_7
    const-string v0, "X9.23PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "X923PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    :cond_8
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/paddings/X923Padding;

    invoke-direct {v2}, Lorg/spongycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 411
    :cond_9
    const-string v0, "ISO7816-4PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ISO9797-1PADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    :cond_a
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v2}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 415
    :cond_b
    const-string v0, "TBCPADDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 417
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/paddings/TBCPadding;

    invoke-direct {v2}, Lorg/spongycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 421
    :cond_c
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_d
    :goto_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7

    .line 795
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˋ([BII[BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 797
    :catch_0
    move-exception v6

    .line 799
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 10

    .line 756
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ء(I)I

    move-result v6

    .line 758
    if-lez v6, :cond_2

    .line 760
    new-array v7, v6, [B

    .line 762
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v7

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˋ([BII[BI)I

    move-result v8

    .line 764
    if-nez v8, :cond_0

    .line 766
    const/4 v0, 0x0

    return-object v0

    .line 768
    :cond_0
    array-length v0, v7

    if-eq v8, v0, :cond_1

    .line 770
    new-array v9, v8, [B

    .line 772
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v7, v0, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    return-object v9

    .line 777
    :cond_1
    return-object v7

    .line 780
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->ˋ([BII[BI)I

    .line 782
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 746
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v2, v0, v1

    .line 747
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v3, v0, v1

    .line 748
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 749
    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aZg:Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    .line 742
    return-void
.end method
