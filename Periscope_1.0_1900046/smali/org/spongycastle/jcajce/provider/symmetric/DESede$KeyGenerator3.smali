.class public Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator3;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 192
    const-string v0, "DESede3"

    new-instance v1, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    const/16 v2, 0xc0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 193
    return-void
.end method