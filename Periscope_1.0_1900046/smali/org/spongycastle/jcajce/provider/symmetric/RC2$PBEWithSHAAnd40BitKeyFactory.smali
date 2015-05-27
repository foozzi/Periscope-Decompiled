.class public Lorg/spongycastle/jcajce/provider/symmetric/RC2$PBEWithSHAAnd40BitKeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40BitKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 126
    move-object v0, p0

    const-string v1, "PBEwithSHAand40BitRC2-CBC"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x28

    const/16 v7, 0x40

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 127
    return-void
.end method
