.class Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z

    return v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 332
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 334
    if-nez p3, :cond_0

    .line 335
    sget-object p3, Lcom/squareup/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 337
    :cond_0
    const-string v0, "supports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    .line 338
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1
    const-string v0, "unsupported"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_2

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_2
    const-string v0, "protocols"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p3

    if-nez v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-object v0

    .line 344
    :cond_3
    const-string v0, "selectProtocol"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "select"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne v0, v3, :cond_7

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 346
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 348
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_6

    .line 349
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0

    .line 348
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0

    .line 354
    :cond_7
    const-string v0, "protocolSelected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "selected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 356
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 359
    :cond_9
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
