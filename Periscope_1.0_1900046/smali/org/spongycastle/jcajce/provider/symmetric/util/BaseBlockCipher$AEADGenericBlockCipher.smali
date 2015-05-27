.class Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AEADGenericBlockCipher"
.end annotation


# static fields
.field private static final aZn:Ljava/lang/reflect/Constructor;


# instance fields
.field private aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 990
    const-string v0, "javax.crypto.AEADBadTagException"

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ﺒ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 991
    if-eqz v1, :cond_0

    .line 993
    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->ﹳ(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZn:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 997
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZn:Ljava/lang/reflect/Constructor;

    .line 999
    :goto_0
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 1018
    return-void
.end method

.method private static ﹳ(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4

    .line 1005
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1007
    :catch_0
    move-exception v3

    .line 1009
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 1070
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1072
    :catch_0
    move-exception v4

    .line 1074
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZn:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 1076
    const/4 v5, 0x0

    .line 1079
    :try_start_1
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZn:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/BadPaddingException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 1085
    goto :goto_0

    .line 1082
    :catch_1
    move-exception v6

    .line 1086
    :goto_0
    if-eqz v5, :cond_0

    .line 1088
    throw v5

    .line 1091
    :cond_0
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 1038
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public nX()Z
    .locals 1

    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public updateAAD([BII)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ᵔ([BII)V

    .line 1054
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 1024
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 6

    .line 1063
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˋ([BII[BI)I

    move-result v0

    return v0
.end method

.method public ء(I)I
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aZo:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ء(I)I

    move-result v0

    return v0
.end method
