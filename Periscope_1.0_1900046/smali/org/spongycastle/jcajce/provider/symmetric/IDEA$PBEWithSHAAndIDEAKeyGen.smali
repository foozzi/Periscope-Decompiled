.class public Lorg/spongycastle/jcajce/provider/symmetric/IDEA$PBEWithSHAAndIDEAKeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndIDEAKeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 68
    move-object v0, p0

    const-string v1, "PBEwithSHAandIDEA-CBC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x80

    const/16 v7, 0x40

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 69
    return-void
.end method
