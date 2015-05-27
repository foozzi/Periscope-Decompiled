.class public Lo/ﾌ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final jF:Ljava/io/InputStream;

.field private final jG:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/ﾌ;->jF:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lo/ﾌ;->jG:Landroid/os/ParcelFileDescriptor;

    .line 17
    return-void
.end method


# virtual methods
.method public 冫()Ljava/io/InputStream;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/ﾌ;->jF:Ljava/io/InputStream;

    return-object v0
.end method

.method public לּ()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ﾌ;->jG:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
