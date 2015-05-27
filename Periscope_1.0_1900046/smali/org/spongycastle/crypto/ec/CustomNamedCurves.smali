.class public Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source ""


# static fields
.field static aIj:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static final aIk:Ljava/util/Hashtable;

.field static final aIl:Ljava/util/Hashtable;

.field static final aIm:Ljava/util/Hashtable;

.field static final aIn:Ljava/util/Hashtable;

.field static ato:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static atp:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static atq:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static atr:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static ats:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static att:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static atu:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static atv:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIj:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 69
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ato:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 97
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atp:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 113
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atq:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atr:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 157
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ats:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 185
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->att:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 201
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atu:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 217
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atv:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 230
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    .line 231
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIl:Ljava/util/Hashtable;

    .line 232
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIm:Ljava/util/Hashtable;

    .line 233
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIn:Ljava/util/Hashtable;

    .line 257
    const-string v0, "curve25519"

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIj:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˊ(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 259
    const-string v0, "secp192k1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->aum:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ato:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 260
    const-string v0, "secp192r1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atp:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 261
    const-string v0, "secp224k1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->aun:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atq:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 262
    const-string v0, "secp224r1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atr:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 263
    const-string v0, "secp256k1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->atZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ats:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 264
    const-string v0, "secp256r1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->att:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 265
    const-string v0, "secp384r1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->aup:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atu:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 266
    const-string v0, "secp521r1"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->atv:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 268
    const-string v0, "P-192"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 269
    const-string v0, "P-224"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 270
    const-string v0, "P-256"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 271
    const-string v0, "P-384"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->aup:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 272
    const-string v0, "P-521"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->auq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jk()Ljava/util/Enumeration;
    .locals 1

    .line 318
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    .line 31
    return-object p0
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pf()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Config;->ˊ(Lorg/spongycastle/math/ec/endo/ECEndomorphism;)Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$Config;->pq()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    .line 237
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method static ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    .line 250
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIl:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIm:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method static ˋ(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    .line 242
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIl:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIn:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIm:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method static synthetic ˎ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 27
    invoke-static {p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˊ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˎ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 27
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method public static ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 3

    .line 277
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIk:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    move-object v2, v0

    .line 278
    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 2

    .line 290
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->aIm:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    move-object v1, v0

    .line 291
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method
