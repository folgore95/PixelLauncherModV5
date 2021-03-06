.class public final Lcom/google/android/gms/internal/aI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field static final Kt:Lcom/google/android/gms/internal/aI;


# instance fields
.field final Ku:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final Kv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Kw:Z

.field final mListeners:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aI;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aI;->Ku:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aI;->Kv:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aI;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aI;->Kw:Z

    return-void
.end method

.method private final A(Z)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aI;->mListeners:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/aJ;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/aJ;->A(Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/aI;->Kw:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v1, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object p0, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aI;->Kw:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fU()Lcom/google/android/gms/internal/aI;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aI;->Kt:Lcom/google/android/gms/internal/aI;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/aI;->Ku:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/aI;->Kv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aI;->A(Z)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/aI;->Ku:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/aI;->Kv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aI;->A(Z)V

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aI;->Ku:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aI;->Kv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/aI;->A(Z)V

    :cond_0
    return-void
.end method
