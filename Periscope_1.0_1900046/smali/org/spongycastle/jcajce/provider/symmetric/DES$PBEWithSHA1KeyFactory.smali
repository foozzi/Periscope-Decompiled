.class public Lorg/spongycastle/jcajce/provider/symmetric/DES$PBEWithSHA1KeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 386
    move-object v0, p0

    const-string v1, "PBEwithSHA1andDES"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x40

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 387
    return-void
.end method
