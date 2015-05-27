.class public Lorg/spongycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES3KeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES3KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 228
    move-object v0, p0

    const-string v1, "PBEwithSHAandDES3Key-CBC"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xc0

    const/16 v7, 0x40

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 229
    return-void
.end method
