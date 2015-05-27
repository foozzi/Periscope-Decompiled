.class Lo/ɭ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɭ$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ɭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ɭ$1;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lo/ɭ$if;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 148
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
