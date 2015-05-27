.class Lo/tl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tw;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ʼ(Lorg/json/JSONObject;)Lo/tf;
    .locals 13

    .line 69
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    const-string v0, "update_required"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 77
    const/4 v12, 0x0

    .line 80
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/tl;->ʽ(Lorg/json/JSONObject;)Lo/td;

    move-result-object v12

    .line 85
    :cond_0
    new-instance v0, Lo/tf;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lo/tf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/td;)V

    return-object v0
.end method

.method private ʽ(Lorg/json/JSONObject;)Lo/td;
    .locals 4

    .line 89
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 91
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 93
    new-instance v0, Lo/td;

    invoke-direct {v0, v1, v2, v3}, Lo/td;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method private ʾ(Lorg/json/JSONObject;)Lo/tq;
    .locals 13

    .line 135
    const-string v0, "log_buffer_size"

    const v1, 0xfa00

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 138
    const-string v0, "max_chained_exception_depth"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 141
    const-string v0, "max_custom_exception_events"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 144
    const-string v0, "max_custom_key_value_pairs"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 147
    const-string v0, "identifier_mask"

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 150
    const-string v0, "send_session_without_crash"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 154
    new-instance v0, Lo/tq;

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lo/tq;-><init>(IIIIIZ)V

    return-object v0
.end method

.method private ʿ(Lorg/json/JSONObject;)Lo/tp;
    .locals 15

    .line 160
    const-string v0, "title"

    const-string v1, "Send Crash Report?"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    const-string v0, "message"

    const-string v1, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    const-string v0, "send_button_title"

    const-string v1, "Send"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 169
    const-string v0, "show_cancel_button"

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 172
    const-string v0, "cancel_button_title"

    const-string v1, "Don\'t Send"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 175
    const-string v0, "show_always_send_button"

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 178
    const-string v0, "always_send_button_title"

    const-string v1, "Always Send"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 182
    new-instance v0, Lo/tp;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lo/tp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private ˈ(Lorg/json/JSONObject;)Lo/tg;
    .locals 4

    .line 187
    const-string v0, "update_endpoint"

    sget-object v1, Lo/tv;->Zx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v0, "update_suspend_duration"

    const/16 v1, 0xe10

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 194
    new-instance v0, Lo/tg;

    invoke-direct {v0, v2, v3}, Lo/tg;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private ˊ(Lo/qk;JLorg/json/JSONObject;)J
    .locals 6

    .line 199
    const-wide/16 v2, 0x0

    .line 201
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 207
    :cond_0
    invoke-interface {p1}, Lo/qk;->cy()J

    move-result-wide v4

    .line 208
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    add-long v2, v4, v0

    .line 211
    :goto_0
    return-wide v2
.end method

.method private ͺ(Lorg/json/JSONObject;)Lo/tn;
    .locals 6

    .line 97
    const-string v0, "prompt_enabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    const-string v0, "collect_logged_exceptions"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 103
    const-string v0, "collect_reports"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 106
    const-string v0, "collect_analytics"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 110
    new-instance v0, Lo/tn;

    invoke-direct {v0, v2, v3, v4, v5}, Lo/tn;-><init>(ZZZZ)V

    return-object v0
.end method

.method private ι(Lorg/json/JSONObject;)Lo/tc;
    .locals 11

    .line 115
    const-string v0, "url"

    const-string v1, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    const-string v0, "flush_interval_secs"

    const/16 v1, 0x258

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 120
    const-string v0, "max_byte_size_per_file"

    const/16 v1, 0x1f40

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 123
    const-string v0, "max_file_count_per_send"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 126
    const-string v0, "max_pending_send_file_count"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 130
    new-instance v0, Lo/tc;

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lo/tc;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method


# virtual methods
.method public ʻ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 61
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "features"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "collect_analytics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "analytics"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    return-object v2
.end method

.method public ˊ(Lo/qk;Lorg/json/JSONObject;)Lo/tu;
    .locals 21

    .line 19
    const-string v0, "settings_version"

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 21
    const-string v0, "cache_duration"

    move-object/from16 v1, p2

    const/16 v2, 0xe10

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 24
    const-string v0, "app"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ʼ(Lorg/json/JSONObject;)Lo/tf;

    move-result-object v13

    .line 26
    const-string v0, "session"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ʾ(Lorg/json/JSONObject;)Lo/tq;

    move-result-object v14

    .line 28
    const-string v0, "prompt"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ʿ(Lorg/json/JSONObject;)Lo/tp;

    move-result-object v15

    .line 30
    const-string v0, "features"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ͺ(Lorg/json/JSONObject;)Lo/tn;

    move-result-object v16

    .line 32
    const-string v0, "analytics"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ι(Lorg/json/JSONObject;)Lo/tc;

    move-result-object v17

    .line 34
    const-string v0, "beta"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/tl;->ˈ(Lorg/json/JSONObject;)Lo/tg;

    move-result-object v18

    .line 37
    int-to-long v0, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v2, v3, v0, v1, v4}, Lo/tl;->ˊ(Lo/qk;JLorg/json/JSONObject;)J

    move-result-wide v19

    .line 39
    new-instance v0, Lo/tu;

    move-wide/from16 v1, v19

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move v9, v11

    move v10, v12

    invoke-direct/range {v0 .. v10}, Lo/tu;-><init>(JLo/tf;Lo/tq;Lo/tp;Lo/tn;Lo/tc;Lo/tg;II)V

    return-object v0
.end method
