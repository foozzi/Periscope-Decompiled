.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$OAEPPadding;
.super Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEPPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 574
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;-><init>(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 575
    return-void
.end method
