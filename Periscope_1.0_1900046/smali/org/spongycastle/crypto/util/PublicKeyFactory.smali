.class public Lorg/spongycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 19

    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 86
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->aCf:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->ﻧ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v8

    .line 91
    new-instance v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 93
    :cond_1
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aEI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHPublicKey;->ᴷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;

    move-result-object v8

    .line 97
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/DHPublicKey;->ip()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v9

    .line 99
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ᴊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object v10

    .line 101
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ij()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v11

    .line 102
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ik()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v12

    .line 103
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->il()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v13

    .line 105
    const/4 v14, 0x0

    .line 106
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->im()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->im()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v14

    .line 111
    :cond_2
    const/4 v15, 0x0

    .line 112
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->io()Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v16

    .line 113
    if-eqz v16, :cond_3

    .line 115
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x9/DHValidationParms;->iq()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v17

    .line 116
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x9/DHValidationParms;->ir()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v18

    .line 120
    new-instance v15, Lorg/spongycastle/crypto/params/DHValidationParameters;

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move-object/from16 v1, v17

    invoke-direct {v15, v1, v0}, Lorg/spongycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 123
    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/DHParameters;

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v0, v9, v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0

    .line 125
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/DHParameter;->ᕁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v8

    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    move-object v9, v0

    .line 130
    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/DHParameter;->fH()Ljava/math/BigInteger;

    move-result-object v10

    .line 131
    if-nez v10, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 132
    :goto_0
    new-instance v12, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v12, v0, v1, v2, v11}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 134
    new-instance v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0

    .line 136
    :cond_6
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ᔅ(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v8

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    move-object v9, v0

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    .line 144
    :cond_7
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aEB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    move-object v8, v0

    .line 148
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 150
    const/4 v10, 0x0

    .line 151
    if-eqz v9, :cond_9

    .line 153
    invoke-interface {v9}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/DSAParameter;->ﭠ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v11

    .line 154
    new-instance v10, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-virtual {v11}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v10, v0, v1, v2}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 157
    :cond_9
    new-instance v0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    return-object v0

    .line 159
    :cond_a
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aDS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X962Parameters;->ⅼ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v8

    .line 166
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v11, v0

    .line 170
    invoke-static {v11}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 171
    if-nez v9, :cond_b

    .line 173
    invoke-static {v11}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 175
    :cond_b
    new-instance v0, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    move-object v1, v11

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v10, v0

    .line 177
    goto :goto_1

    .line 180
    :cond_c
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 181
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v10, v0

    .line 185
    :goto_1
    new-instance v11, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 186
    new-instance v12, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-direct {v12, v0, v11}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 188
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x9/X9ECPoint;->iy()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 192
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
