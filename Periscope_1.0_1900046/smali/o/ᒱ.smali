.class public Lo/ᒱ;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ڊ(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "SUCCESS_CACHE"

    return-object v0

    :sswitch_1
    const-string v0, "SUCCESS"

    return-object v0

    :sswitch_2
    const-string v0, "SERVICE_MISSING"

    return-object v0

    :sswitch_3
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :sswitch_4
    const-string v0, "SERVICE_DISABLED"

    return-object v0

    :sswitch_5
    const-string v0, "SIGN_IN_REQUIRED"

    return-object v0

    :sswitch_6
    const-string v0, "INVALID_ACCOUNT"

    return-object v0

    :sswitch_7
    const-string v0, "RESOLUTION_REQUIRED"

    return-object v0

    :sswitch_8
    const-string v0, "NETWORK_ERROR"

    return-object v0

    :sswitch_9
    const-string v0, "INTERNAL_ERROR"

    return-object v0

    :sswitch_a
    const-string v0, "SERVICE_INVALID"

    return-object v0

    :sswitch_b
    const-string v0, "DEVELOPER_ERROR"

    return-object v0

    :sswitch_c
    const-string v0, "LICENSE_CHECK_FAILED"

    return-object v0

    :sswitch_d
    const-string v0, "ERROR_OPERATION_FAILED"

    return-object v0

    :sswitch_e
    const-string v0, "INTERRUPTED"

    return-object v0

    :sswitch_f
    const-string v0, "TIMEOUT"

    return-object v0

    :sswitch_10
    const-string v0, "CANCELED"

    return-object v0

    :sswitch_11
    const-string v0, "AUTH_API_INVALID_CREDENTIALS"

    return-object v0

    :sswitch_12
    const-string v0, "AUTH_API_ACCESS_FORBIDDEN"

    return-object v0

    :sswitch_13
    const-string v0, "AUTH_API_CLIENT_ERROR"

    return-object v0

    :sswitch_14
    const-string v0, "AUTH_API_SERVER_ERROR"

    return-object v0

    :sswitch_15
    const-string v0, "AUTH_TOKEN_ERROR"

    return-object v0

    :sswitch_16
    const-string v0, "AUTH_URL_RESOLUTION"

    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0xbb8 -> :sswitch_11
        0xbb9 -> :sswitch_12
        0xbba -> :sswitch_13
        0xbbb -> :sswitch_14
        0xbbc -> :sswitch_15
        0xbbd -> :sswitch_16
    .end sparse-switch
.end method
