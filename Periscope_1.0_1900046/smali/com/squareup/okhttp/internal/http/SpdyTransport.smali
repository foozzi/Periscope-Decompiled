.class public final Lcom/squareup/okhttp/internal/http/SpdyTransport;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# static fields
.field private static final HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/uj;>;"
        }
    .end annotation
.end field

.field private static final SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/uj;>;"
        }
    .end annotation
.end field


# instance fields
.field private final httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private final spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field private stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lo/uj;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lo/uj;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "transfer-encoding"

    .line 65
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "encoding"

    .line 66
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "upgrade"

    .line 67
    invoke-static {v1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 59
    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 75
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 76
    return-void
.end method

.method private static isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lo/uj;)Z
    .locals 1

    .line 224
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;"
        }
    .end annotation

    .line 173
    const/4 v2, 0x0

    .line 174
    const-string v3, "HTTP/1.1"

    .line 176
    new-instance v4, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 177
    sget-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 178
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_5

    .line 179
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v7, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    .line 180
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {v0}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v8

    .line 181
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 182
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 183
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 184
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 186
    :cond_0
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 187
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lo/uj;

    invoke-virtual {v7, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    move-object v2, v11

    goto :goto_2

    .line 189
    :cond_1
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lo/uj;

    invoke-virtual {v7, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    move-object v3, v11

    goto :goto_2

    .line 191
    :cond_2
    invoke-static {p1, v7}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lo/uj;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    invoke-virtual {v7}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v11}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 194
    :cond_3
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .line 195
    goto :goto_1

    .line 178
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 197
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v5

    .line 200
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget v1, v5, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 202
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, v5, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lo/uj;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lo/uj;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 119
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, p1, :cond_0

    .line 120
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lo/uj;

    invoke-direct {v0, v1, p2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:Lo/uj;

    invoke-direct {v0, v1, v5}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, p1, :cond_1

    .line 123
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lo/uj;

    invoke-direct {v0, v1, v5}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :goto_0
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lo/uj;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_7

    .line 132
    invoke-virtual {v3, v7}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v9

    .line 133
    invoke-virtual {v3, v7}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-static {p1, v9}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lo/uj;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 139
    :cond_2
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lo/uj;

    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lo/uj;

    .line 140
    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lo/uj;

    .line 141
    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lo/uj;

    .line 142
    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:Lo/uj;

    .line 143
    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lo/uj;

    .line 144
    invoke-virtual {v9, v0}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    goto/16 :goto_3

    .line 149
    :cond_3
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v0, v9, v10}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_3

    .line 155
    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 156
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    invoke-virtual {v0, v9}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {v0}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 158
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v0, v9, v12}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Ljava/lang/String;)V

    invoke-interface {v4, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    goto :goto_3

    .line 155
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 130
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 163
    :cond_7
    return-object v4
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 1

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lo/uz;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSink()Lo/uz;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 216
    :cond_0
    return-void
.end method

.method public finishRequest()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSink()Lo/uz;

    move-result-object v0

    invoke-interface {v0}, Lo/uz;->close()V

    .line 101
    return-void
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 3

    .line 208
    new-instance v0, Lcom/squareup/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSource()Lo/va;

    move-result-object v2

    invoke-static {v2}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RealResponseBody;-><init>(Lcom/squareup/okhttp/Headers;Lo/ui;)V

    return-object v0
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 0

    .line 212
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSink()Lo/uz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lo/uz;)V

    .line 97
    return-void
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    move-result v4

    .line 87
    const/4 v5, 0x1

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/RequestLine;->version(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v6

    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 90
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {p1, v1, v6}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1, v4, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 92
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lo/vb;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lo/vb;->timeout(JLjava/util/concurrent/TimeUnit;)Lo/vb;

    .line 93
    return-void
.end method
