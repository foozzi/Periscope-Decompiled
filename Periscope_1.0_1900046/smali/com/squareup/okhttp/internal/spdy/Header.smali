.class public final Lcom/squareup/okhttp/internal/spdy/Header;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESPONSE_STATUS:Lo/uj;

.field public static final TARGET_AUTHORITY:Lo/uj;

.field public static final TARGET_HOST:Lo/uj;

.field public static final TARGET_METHOD:Lo/uj;

.field public static final TARGET_PATH:Lo/uj;

.field public static final TARGET_SCHEME:Lo/uj;

.field public static final VERSION:Lo/uj;


# instance fields
.field final hpackSize:I

.field public final name:Lo/uj;

.field public final value:Lo/uj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, ":status"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lo/uj;

    .line 9
    const-string v0, ":method"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lo/uj;

    .line 10
    const-string v0, ":path"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lo/uj;

    .line 11
    const-string v0, ":scheme"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lo/uj;

    .line 12
    const-string v0, ":authority"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lo/uj;

    .line 13
    const-string v0, ":host"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:Lo/uj;

    .line 14
    const-string v0, ":version"

    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lo/uj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-static {p1}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    invoke-static {p2}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Lo/uj;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lo/uj;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {p2}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Lo/uj;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lo/uj;Lo/uj;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    .line 33
    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    .line 34
    invoke-virtual {p1}, Lo/uj;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lo/uj;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 38
    instance-of v0, p1, Lcom/squareup/okhttp/internal/spdy/Header;

    if-eqz v0, :cond_1

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    move-object v2, v0

    .line 40
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    iget-object v1, v2, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    invoke-virtual {v0, v1}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    iget-object v1, v2, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    .line 41
    invoke-virtual {v0, v1}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 47
    const/16 v2, 0x11

    .line 48
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    invoke-virtual {v0}, Lo/uj;->hashCode()I

    move-result v0

    add-int/lit16 v2, v0, 0x20f

    .line 49
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {v1}, Lo/uj;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 50
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 54
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    invoke-virtual {v2}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {v2}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
