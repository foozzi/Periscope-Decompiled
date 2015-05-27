.class Lo/ru$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final timestamp:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lo/ru$if;->file:Ljava/io/File;

    .line 225
    iput-wide p2, p0, Lo/ru$if;->timestamp:J

    .line 226
    return-void
.end method
