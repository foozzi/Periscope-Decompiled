.class public Lorg/spongycastle/jcajce/provider/asymmetric/IES$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/IES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 2

    .line 19
    const-string v0, "AlgorithmParameters.IES"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.ies.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->ﹶ(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "Cipher.IES"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.ies.CipherSpi$IES"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->ﹶ(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
