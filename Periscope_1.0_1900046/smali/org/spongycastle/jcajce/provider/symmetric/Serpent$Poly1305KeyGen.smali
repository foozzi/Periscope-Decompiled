.class public Lorg/spongycastle/jcajce/provider/symmetric/Serpent$Poly1305KeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Serpent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Poly1305KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    const-string v0, "Poly1305-Serpent"

    new-instance v1, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;-><init>()V

    const/16 v2, 0x100

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 71
    return-void
.end method