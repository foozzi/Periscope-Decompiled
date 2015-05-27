.class public final Lo/ro$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final Xq:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lo/ro$if;->Xq:I

    .line 110
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 114
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    iget v0, p0, Lo/ro$if;->Xq:I

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 116
    const-string v0, "Queue"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 117
    return-object v1
.end method
