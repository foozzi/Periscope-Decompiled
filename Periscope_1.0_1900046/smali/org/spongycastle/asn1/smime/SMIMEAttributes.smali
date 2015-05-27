.class public interface abstract Lorg/spongycastle/asn1/smime/SMIMEAttributes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aux:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMEAttributes;->aux:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMEAttributes;->auy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
