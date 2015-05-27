.class Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;
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
    name = "BufferedGenericBlockCipher"
.end annotation


# instance fields
.field private aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 918
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 923
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 913
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 975
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 977
    :catch_0
    move-exception v2

    .line 979
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 948
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 943
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public nX()Z
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    instance-of v0, v0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateAAD([BII)V
    .locals 2

    .line 958
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AAD is not supported in the current mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 929
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 6

    .line 968
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˋ([BII[BI)I

    move-result v0

    return v0
.end method

.method public ء(I)I
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ء(I)I

    move-result v0

    return v0
.end method
