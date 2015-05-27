.class public Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aZF:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    .line 18
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->aoI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->aoJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/SecretKeyUtil;->aZF:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->aoK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
