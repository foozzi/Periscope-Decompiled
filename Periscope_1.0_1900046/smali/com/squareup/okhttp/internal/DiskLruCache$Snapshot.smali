.class public final Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lo/va;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lo/va;[J)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 775
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 776
    iput-object p5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lo/va;

    .line 777
    iput-object p6, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lo/va;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0

    .line 767
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lo/va;[J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 804
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lo/va;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 805
    invoke-static {v4}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 804
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method

.method public edit()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2200(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLength(I)J
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSource(I)Lo/va;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lo/va;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
