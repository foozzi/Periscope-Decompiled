.class public Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final NW:Ljava/util/Hashtable;

.field static final ahv:Ljava/util/Hashtable;

.field static final ahw:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    .line 23
    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "166"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 33
    new-instance v9, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v9, v8, v0, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->aho:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "166"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 52
    new-instance v9, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v9, v8, v0, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "57896044618658097711785492504343953926634992332820282019728792003956564823193"

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "57896044618658097711785492504343953927102133160255826820068844496087732066703"

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "57896044618658097711785492504343953926634992332820282019728792003956564823190"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "28091019353058090096996979000309560759124368558014865957655842872397301267595"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 71
    new-instance v9, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "28792665814854611296992347458380284135028636778229113005756334730996303888124"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v9, v8, v0, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 78
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "32858"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 90
    new-instance v9, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v9, v8, v0, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 97
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "32858"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 108
    new-instance v9, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v9, v8, v0, v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 115
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    const-string v1, "GostR3410-2001-CryptoPro-A"

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->aho:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    const-string v1, "GostR3410-2001-CryptoPro-B"

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    const-string v1, "GostR3410-2001-CryptoPro-C"

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    const-string v1, "GostR3410-2001-CryptoPro-XchA"

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    const-string v1, "GostR3410-2001-CryptoPro-XchB"

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->aho:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GostR3410-2001-CryptoPro-A"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GostR3410-2001-CryptoPro-B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GostR3410-2001-CryptoPro-C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GostR3410-2001-CryptoPro-XchA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GostR3410-2001-CryptoPro-XchB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʶ(Ljava/lang/String;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 2

    .line 154
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v1, v0

    .line 156
    if-eqz v1, :cond_0

    .line 158
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-object v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 1

    .line 139
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method

.method public static ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahw:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 175
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ahv:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
