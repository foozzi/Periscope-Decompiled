.class public final Lcom/squareup/okhttp/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field static final PREFIX:Ljava/lang/String;

.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/squareup/okhttp/internal/http/OkHeaders$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static addCookies(Lcom/squareup/okhttp/Request$Builder;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/Request$Builder;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;)V"
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 111
    const-string v0, "Cookie"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cookie2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 115
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method private static buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 126
    if-lez v3, :cond_1

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Headers;)J
    .locals 2

    .line 70
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Request;)J
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Response;)J
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasVaryAll(Lcom/squareup/okhttp/Response;)Z
    .locals 2

    .line 149
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .line 197
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseChallenges(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
        }
    .end annotation

    .line 217
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_3

    .line 219
    invoke-virtual {p0, v7}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    goto/16 :goto_2

    .line 222
    :cond_0
    invoke-virtual {p0, v7}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    .line 223
    const/4 v10, 0x0

    .line 224
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 225
    move v11, v10

    .line 226
    const-string v0, " "

    invoke-static {v9, v10, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    .line 228
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 229
    invoke-static {v9, v10}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v10

    .line 235
    move-object v0, v9

    move v2, v10

    const-string v3, "realm=\""

    const-string v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    goto :goto_2

    .line 239
    :cond_1
    const-string v0, "realm=\""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v10, v0

    .line 240
    move v13, v10

    .line 241
    const-string v0, "\""

    invoke-static {v9, v10, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    .line 242
    invoke-virtual {v9, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 243
    add-int/lit8 v10, v10, 0x1

    .line 244
    const-string v0, ","

    invoke-static {v9, v10, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    .line 245
    add-int/lit8 v10, v10, 0x1

    .line 246
    invoke-static {v9, v10}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v10

    .line 247
    new-instance v0, Lcom/squareup/okhttp/Challenge;

    invoke-direct {v0, v12, v14}, Lcom/squareup/okhttp/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    goto/16 :goto_1

    .line 218
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 250
    :cond_3
    return-object v6
.end method

.method public static processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;
    .locals 2

    .line 260
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 261
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/Authenticator;->authenticateProxy(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/Authenticator;->authenticate(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 3

    .line 74
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
        }
    .end annotation

    .line 89
    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 91
    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    .line 96
    if-eqz v8, :cond_0

    .line 97
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/Response;)Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_3

    .line 156
    const-string v0, "Vary"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v2, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 162
    :cond_1
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 163
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 155
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_3
    return-object v2
.end method

.method public static varyHeaders(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;
    .locals 7

    .line 174
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->networkResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    .line 182
    new-instance v3, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 184
    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 183
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Request;)Z
    .locals 4

    .line 138
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 139
    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
