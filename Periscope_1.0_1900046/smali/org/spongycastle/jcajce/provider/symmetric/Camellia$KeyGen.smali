.class public Lorg/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 115
    const-string v0, "Camellia"

    new-instance v1, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 116
    return-void
.end method
