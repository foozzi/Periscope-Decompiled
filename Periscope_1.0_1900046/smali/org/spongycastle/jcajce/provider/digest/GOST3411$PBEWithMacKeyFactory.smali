.class public Lorg/spongycastle/jcajce/provider/digest/GOST3411$PBEWithMacKeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/GOST3411;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMacKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 58
    move-object v0, p0

    const-string v1, "PBEwithHmacGOST3411"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/16 v6, 0x100

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 59
    return-void
.end method
