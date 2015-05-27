.class Lo/ᴠ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴠ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field final iS:Ljava/util/concurrent/locks/Lock;

.field iT:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/ᴠ$if;->iS:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lo/ᴠ$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/ᴠ$if;-><init>()V

    return-void
.end method
