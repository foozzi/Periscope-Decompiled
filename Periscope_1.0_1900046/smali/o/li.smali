.class public Lo/li;
.super Lo/lj;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/lj;-><init>()V

    return-void
.end method

.method public static ৲(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 22
    const-string v0, "UTF-8"

    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 23
    :catch_0
    move-exception v3

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
