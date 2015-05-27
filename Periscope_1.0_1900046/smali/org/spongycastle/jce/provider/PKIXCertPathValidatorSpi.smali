.class public Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 36

    .line 43
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/security/cert/PKIXParameters;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v0, :cond_1

    .line 52
    move-object/from16 v0, p2

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v8, v0

    goto :goto_0

    .line 56
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v8

    .line 58
    :goto_0
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    .line 72
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 74
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 87
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v11

    .line 95
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 101
    goto :goto_1

    .line 98
    :catch_0
    move-exception v13

    .line 100
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v13}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v13, v3, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 103
    :goto_1
    if-nez v12, :cond_4

    .line 105
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 112
    :cond_4
    const/4 v14, 0x0

    .line 123
    add-int/lit8 v0, v10, 0x1

    new-array v1, v0, [Ljava/util/ArrayList;

    move-object/from16 v16, v1

    .line 124
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v1, v17

    if-ge v1, v0, :cond_5

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, v16, v17

    .line 124
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 129
    :cond_5
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 131
    const-string v0, "2.5.29.32.0"

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v17

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "2.5.29.32.0"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v18, v0

    .line 136
    const/4 v0, 0x0

    aget-object v0, v16, v0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v19, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 146
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 148
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const/16 v20, 0x0

    goto :goto_3

    .line 154
    :cond_6
    add-int/lit8 v20, v10, 0x1

    .line 162
    :goto_3
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const/16 v22, 0x0

    goto :goto_4

    .line 168
    :cond_7
    add-int/lit8 v22, v10, 0x1

    .line 176
    :goto_4
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 178
    const/16 v23, 0x0

    goto :goto_5

    .line 182
    :cond_8
    add-int/lit8 v23, v10, 0x1

    .line 191
    :goto_5
    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v26

    .line 194
    if-eqz v26, :cond_9

    .line 196
    :try_start_1
    invoke-static/range {v26 .. v26}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʼ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v25

    .line 197
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    goto :goto_6

    .line 201
    :cond_9
    new-instance v25, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 209
    :goto_6
    goto :goto_7

    .line 205
    :catch_1
    move-exception v27

    .line 207
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Subject of trust anchor could not be (re)encoded."

    move-object/from16 v2, v27

    move-object/from16 v3, p1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 211
    :goto_7
    const/16 v27, 0x0

    .line 214
    :try_start_2
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˎ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v27

    .line 220
    goto :goto_8

    .line 216
    :catch_2
    move-exception v28

    .line 218
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Algorithm identifier of public key of trust anchor could not be read."

    move-object/from16 v2, v28

    move-object/from16 v3, p1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 221
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v28

    .line 222
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v29

    .line 227
    move/from16 v30, v10

    .line 233
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Lorg/spongycastle/util/Selector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 236
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Target certificate in certification path does not match targetConstraints."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 243
    :cond_a
    invoke-virtual {v8}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v31

    .line 244
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 245
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_9

    .line 250
    :cond_b
    const/16 v32, 0x0

    .line 252
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    :goto_a
    if-ltz v14, :cond_10

    .line 259
    sub-int v15, v10, v14

    .line 267
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v32, v0

    .line 268
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v14, v0, :cond_c

    const/16 v33, 0x1

    goto :goto_b

    :cond_c
    const/16 v33, 0x0

    .line 274
    :goto_b
    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v14

    move-object/from16 v3, v24

    move/from16 v4, v33

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 279
    move-object/from16 v0, p1

    move v1, v14

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move/from16 v5, v22

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v18

    .line 282
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v18

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v14, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V

    .line 290
    if-eq v15, v10, :cond_f

    .line 292
    if-eqz v32, :cond_d

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 294
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Version 1 certificates can\'t be used as CA ones."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 298
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;I)V

    .line 300
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-static {v0, v14, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v18

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ʻ(Ljava/security/cert/CertPath;II)I

    move-result v20

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ʼ(Ljava/security/cert/CertPath;II)I

    move-result v23

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ʽ(Ljava/security/cert/CertPath;II)I

    move-result v22

    .line 313
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;II)I

    move-result v20

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Ljava/security/cert/CertPath;II)I

    move-result v23

    .line 317
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˎ(Ljava/security/cert/CertPath;II)I

    move-result v22

    .line 320
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Ljava/security/cert/CertPath;I)V

    .line 323
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˏ(Ljava/security/cert/CertPath;II)I

    move-result v30

    .line 326
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v14, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ᐝ(Ljava/security/cert/CertPath;II)I

    move-result v30

    .line 329
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˎ(Ljava/security/cert/CertPath;I)V

    .line 331
    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v34

    .line 332
    if-eqz v34, :cond_e

    .line 334
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v34, v0

    .line 337
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbc:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbd:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bba:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbb:Ljava/lang/String;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 350
    :cond_e
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 354
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-static {v0, v14, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 357
    move-object/from16 v26, v32

    .line 360
    invoke-static/range {v26 .. v26}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʼ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v25

    .line 365
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v24

    .line 370
    goto :goto_d

    .line 367
    :catch_3
    move-exception v35

    .line 369
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 372
    :goto_d
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˎ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v27

    .line 374
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v28

    .line 376
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v29

    .line 252
    :cond_f
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_a

    .line 384
    :cond_10
    move/from16 v0, v20

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(ILjava/security/cert/X509Certificate;)I

    move-result v20

    .line 386
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ͺ(Ljava/security/cert/CertPath;II)I

    move-result v20

    .line 395
    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v33

    .line 397
    if-eqz v33, :cond_11

    .line 399
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v33, v0

    .line 401
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbc:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbd:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bba:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbb:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbi:Ljava/lang/String;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 415
    :cond_11
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 418
    :goto_e
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    invoke-static {v1, v0, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 420
    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v11

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v34

    .line 423
    if-gtz v20, :cond_12

    if-eqz v34, :cond_13

    .line 425
    :cond_12
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, v34

    invoke-direct {v0, v12, v2, v1}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    .line 428
    :cond_13
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Path processing failed on policy."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method
